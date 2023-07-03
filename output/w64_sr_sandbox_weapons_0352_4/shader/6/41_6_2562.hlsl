// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:40 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[99];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[88].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[98].x;
    r0.y = (uint)cb0[89].x;
    r0.z = (uint)vThreadID.x << 3;
    r0.y = (int)r0.z + (int)r0.y;
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xyzw;
    r5.xyzw = t0.Load(r2.z).yzwx;
    r2.xyzw = t0.Load(r2.w).yzwx;
    r0.yzw = (int3)r0.yyy + int3(5,6,7);
    r6.xyzw = t0.Load(r0.y).yzwx;
    r7.xyzw = t0.Load(r0.z).xyzw;
    r8.w = t0.Load(r0.w).x;
    r9.xyz = r5.wxy * float3(2,2,2) + float3(-1,-1,-1);
    r0.yzw = saturate(r2.wxy);
    r10.z = saturate(r5.z);
    r11.xyzw = r10.zzzz * float4(0.367646992,5.50000095,0.173913002,4.6923089) + float4(0,-1.16333401,0.398986012,-2.658463);
    r12.x = r10.z * 0.323944002 + 0.676056027;
    r13.xyzw = cmp(r10.zzzz >= float4(0,0.226667002,0.293332994,0.676666975));
    r13.xyzw = r13.xyzw ? float4(1,1,1,1) : 0;
    r12.yz = cmp(r10.zz >= float2(0.763333023,1));
    r12.zw = r12.yz ? float2(1,1) : 0;
    r13.xyz = r13.xyz + r13.yzw;
    r13.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r13.xyz;
    r13.xyz = float3(0.5,0.5,0.5) * r13.xyz;
    r13.xyz = frac(r13.xyz);
    r11.xyz = r13.xyz * r11.xyz;
    r13.xy = r12.zw + r12.ww;
    r13.xy = float2(9.99999997e-007,9.99999997e-007) + r13.xy;
    r13.xy = float2(0.5,0.5) * r13.xy;
    r13.xy = frac(r13.xy);
    r12.x = r13.x * r12.x;
    r12.z = 2;
    r11.xy = r12.zz * r11.xy;
    r12.x = 2 * r12.x;
    r11.x = r11.x + r11.y;
    r11.x = r12.z * r11.z + r11.x;
    r11.x = r11.w * r13.w + r11.x;
    r11.y = r13.y * 4 + r12.x;
    r11.y = r12.w * 1 + r11.y;
    r11.x = saturate(r12.y ? r11.y : r11.x);
    r11.xy = float2(-0,-0.5) + r11.xx;
    r11.xy = saturate(r11.xy + r11.xy);
    r11.yz = float2(0.5,-0.5) * r11.xy;
    r11.x = dot(float2(1,1), r11.yz);
    r11.w = 0;
    r11.xyz = float3(1,0.5,1) + r11.xyw;
    r11.w = saturate(r3.w);
    r12.xyzw = r11.wwww * float4(0,4.61653614,25,3.37007093) + float4(0,-8.60983944,0,0.623232007);
    r13.x = r11.w * r11.w;
    r12.xy = r12.xy * r13.xx + r12.zw;
    r13.xyzw = cmp(r11.wwww >= float4(0,0.0399999991,0.243332997,1));
    r13.xyzw = r13.xyzw ? float4(1,1,1,1) : 0;
    r13.xyz = r13.xyz + r13.yzw;
    r13.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r13.xyz;
    r13.xyz = float3(0.5,0.5,0.5) * r13.xyz;
    r13.xyz = frac(r13.xyz);
    r13.xz = r13.xz * r12.xy;
    r12.xy = r13.xy + r13.xy;
    r11.w = r12.x + r12.y;
    r11.w = saturate(r13.z * 2 + r11.w);
    r11.xyz = r11.xyz * r11.www;
    r12.xyz = r0.yzz * float3(0.349999994,1.01562405,-105.000046) + float3(0.400000006,-0.593748987,289.500153);
    r13.xy = r0.zz * float2(0,-260.600159) + float2(0,77.1000366);
    r0.y = r0.z * r0.z;
    r12.yz = r12.yz * r0.yy + r13.xy;
    r13.xyz = cmp(r0.zzz >= float3(0,0.800000012,1));
    r13.xyw = r13.xyz ? float3(1,1,1) : 0;
    r13.xyz = r13.xyw + r13.yww;
    r13.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r13.xyz;
    r13.xyz = float3(0.5,0.5,0.5) * r13.xyz;
    r13.xyz = frac(r13.xyz);
    r0.yz = r13.xy * r12.yz;
    r0.yz = float2(2,2) * r0.yz;
    r0.y = r0.y + r0.z;
    r0.y = r13.z * 2 + r0.y;
    r0.y = saturate(r13.w * 1 + r0.y);
    r0.y = r0.y * 0.25 + 0.100000001;
    r0.z = saturate(cb0[1].y * 0.200000003 + -1);
    r0.z = r0.z * 0.75 + 0.25;
    r13.x = r0.y * r0.z;
    r12.yzw = r0.www * float3(0.315068007,2.72413802,0.275362015) + float3(0,-0.879310012,0.724637985);
    r14.xyzw = cmp(r0.wwww >= float4(0,0.36500001,0.654999971,1));
    r14.xyzw = r14.xyzw ? float4(1,1,1,1) : 0;
    r0.yzw = r14.xyz + r14.yzw;
    r0.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r0.yzw;
    r0.yzw = float3(0.5,0.5,0.5) * r0.yzw;
    r0.yzw = frac(r0.yzw);
    r0.yzw = r0.yzw * r12.yzw;
    r0.yz = float2(2,2) * r0.yz;
    r0.y = r0.y + r0.z;
    r0.y = r0.w * 2 + r0.y;
    r0.y = saturate(r14.w * 1 + r0.y);
    r14.xyz = r0.yyy * float3(-0.251601011,-0.251558989,-0.287757993) + float3(0.273892999,0.274163991,0.312391996);
    r13.z = saturate(r8.w);
    r0.x = mad(11, (int)vThreadID.x, (int)r0.x);
    r10.xy = r12.xx;
    r10.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r10.xyzw
    r10.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.xxxx, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.yyyy, r3.xyzw
    r9.w = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.zzzz, r9.xyzw
    r11.w = r4.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.wwww, r11.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(5,6,7,8);
    r14.w = r4.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r14.xyzw
    r13.y = r4.w;
    r13.w = r5.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r13.xyzw
    r5.w = r2.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
    r2.w = r6.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
    r0.yz = (int2)r0.xx + int2(9,10);
    r6.w = r7.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r6.xyzw
    r8.xyz = r7.yzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r8.xyzw
  }
  return;
}