// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:41 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
    r0.y = mad(6, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xyzw;
    r5.xyzw = t0.Load(r2.z).yzwx;
    r2.xyzw = t0.Load(r2.w).xyzw;
    r0.y = (int)r0.y + 5;
    r6.w = t0.Load(r0.y).x;
    r0.y = saturate(r3.w);
    r0.y = 1 + -r0.y;
    r0.y = r0.y * 0.5 + 0.5;
    r0.zw = saturate(cb0[1].yy * float2(0.125,0.200000003) + float2(-0.25,-1));
    r0.zw = r0.zw * float2(0.850000024,0.75) + float2(0.150000006,0.25);
    r7.w = r0.y * r0.z;
    r0.y = saturate(r5.x);
    r8.xy = r0.yy * float2(0.639003992,2.474576) + float2(0,-1.474576);
    r9.xyz = cmp(r0.yyy >= float3(0,0.803332984,1));
    r9.xyw = r9.xyz ? float3(1,1,1) : 0;
    r9.xyz = r9.xyw + r9.yww;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r0.yz = r9.xy * r8.xy;
    r0.yz = float2(2,2) * r0.yz;
    r0.y = r0.y + r0.z;
    r0.y = r9.z * 2 + r0.y;
    r0.y = saturate(r9.w * 1 + r0.y);
    r0.y = r0.y * 0.00699999975 + 0.00300000003;
    r0.z = saturate(r4.x);
    r8.x = 1 + -r0.z;
    r0.y = r8.x * r0.y;
    r8.x = r0.y * r0.w;
    r0.y = saturate(-3 + r3.w);
    r8.y = 1 + -r0.y;
    r9.xyzw = r0.zzzz * float4(-0.145627007,-31.9374943,-0.100987002,1.75315106) + float4(1,3.49974608,0.0243829992,-0.910211027);
    r10.xyzw = cmp(r0.zzzz >= float4(0,0.0786280036,0.109163001,0.241445005));
    r10.xyzw = r10.xyzw ? float4(1,1,1,1) : 0;
    r10.xyz = r10.xyz + r10.yzw;
    r10.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r10.xyz;
    r10.xyz = float3(0.5,0.5,0.5) * r10.xyz;
    r10.xyz = frac(r10.xyz);
    r9.xyz = r10.xyz * r9.xyz;
    r0.yw = r9.xy + r9.xy;
    r0.y = r0.y + r0.w;
    r0.y = saturate(r9.z * 2 + r0.y);
    r0.yw = float2(-0,-0.5) + r0.yy;
    r0.yw = saturate(r0.yw + r0.yw);
    r0.yw = float2(499.5,-490) * r0.yw;
    r0.y = dot(float2(1,1), r0.yw);
    r0.y = 0.5 + r0.y;
    r0.w = saturate(5 * r1.w);
    r9.xy = r0.ww * float2(10.3448277,-1.10701096) + float2(0,1.10701096);
    r10.xyz = cmp(r0.www >= float3(0,0.0966669992,1));
    r10.xyz = r10.xyz ? float3(1,1,1) : 0;
    r10.xy = r10.xy + r10.yz;
    r10.xy = float2(9.99999997e-007,9.99999997e-007) + r10.xy;
    r10.xy = float2(0.5,0.5) * r10.xy;
    r10.xy = frac(r10.xy);
    r9.xy = r10.xy * r9.xy;
    r9.xy = r9.xy + r9.xy;
    r0.w = r9.x + r9.y;
    r0.w = min(1, r0.w);
    r9.x = saturate(0.5 * r3.w);
    r9.yz = r9.xx * float2(5.45454502,-1.22449005) + float2(0,1.22449005);
    r10.xyz = cmp(r9.xxx >= float3(0,0.183332995,1));
    r10.xyz = r10.xyz ? float3(1,1,1) : 0;
    r10.xy = r10.xy + r10.yz;
    r10.xy = float2(9.99999997e-007,9.99999997e-007) + r10.xy;
    r10.xy = float2(0.5,0.5) * r10.xy;
    r10.xy = frac(r10.xy);
    r9.xy = r10.xy * r9.yz;
    r9.xy = r9.xy + r9.xy;
    r9.x = r9.x + r9.y;
    r9.x = min(1, r9.x);
    r0.w = r0.w * 249.75 + -0.75;
    r0.y = r9.x * r0.w + r0.y;
    r8.z = 1 + r0.y;
    r0.y = 0.157059997 * r0.z;
    r0.z = r0.z * r0.z;
    r0.y = r9.w * r0.z + r0.y;
    r0.y = max(0, r0.y);
    r0.yzw = float3(-0,-0.333332986,-0.666666985) + r0.yyy;
    r0.yzw = saturate(float3(3.0000031,2.99999404,3.00000286) * r0.yzw);
    r9.xyz = float3(-0.636312008,-0.212103993,0.848415971) * r0.yzw;
    r10.xyz = float3(0.37718001,0.125725999,-0.502906978) * r0.yzw;
    r0.yzw = float3(0.636312008,0.212103993,-0.848415971) * r0.yzw;
    r9.x = dot(float3(1,1,1), r9.xyz);
    r9.y = dot(float3(1,1,1), r10.xyz);
    r9.z = dot(float3(1,1,1), r0.yzw);
    r9.xyz = float3(1,0.324339002,0.151583999) + r9.xyz;
    r0.x = mad(7, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
    r9.w = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r9.xyzw
    r7.xyz = r4.yzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r7.xyzw
    r8.w = r5.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r8.xyzw
    r0.yz = (int2)r0.xx + int2(5,6);
    r5.w = r2.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r5.xyzw
    r6.xyz = r2.yzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r6.xyzw
  }
  return;
}