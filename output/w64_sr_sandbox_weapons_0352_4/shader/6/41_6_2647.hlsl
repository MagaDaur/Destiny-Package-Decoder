// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:39 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
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
    r5.xyzw = t0.Load(r2.z).zwxy;
    r2.xyzw = t0.Load(r2.w).xyzw;
    r0.y = (int)r0.y + 5;
    r6.z = t0.Load(r0.y).x;
    r0.yzw = saturate(r5.wxy);
    r7.xyzw = r0.yyyy * float4(0.75,-0.236842006,-2.23684192,5) + float4(0.25,1.47368503,1,4);
    r8.xy = saturate(cb0[1].yy * float2(0.125,0.200000003) + float2(-0.25,-1));
    r8.xy = r8.xy * float2(0.850000024,0.5) + float2(0.150000006,0.5);
    r9.w = r8.x * r7.x;
    r8.xz = r0.yw * r0.yw;
    r0.y = saturate(r7.y * r8.x + r7.z);
    r0.y = r0.y * 0.00549999997 + 0.00449999981;
    r7.x = saturate(r1.w);
    r7.x = r7.x * -0.5 + 1.5;
    r0.y = r7.x * r0.y;
    r7.x = saturate(r4.x);
    r10.xyz = r7.xxx * float3(0.378378004,118.897331,-0.0702000037) + float3(-1.37837803,-27.2339897,0.236425996);
    r7.y = r7.x * r7.x;
    r7.z = r10.x * r7.y + 1;
    r7.z = max(0, r7.z);
    r7.z = r7.z * 0.949999988 + 0.0500000007;
    r0.y = r7.z * r0.y;
    r11.x = r0.y * r8.y;
    r8.xy = r7.xx * float2(-3.88636398,-0.301725) + float2(1,0.135499001);
    r7.yz = r10.yz * r7.yy + r8.xy;
    r8.xyw = cmp(r7.xxx >= float3(0,0.203333005,1));
    r8.xyw = r8.xyw ? float3(1,1,1) : 0;
    r8.xy = r8.xy + r8.yw;
    r8.xy = float2(9.99999997e-007,9.99999997e-007) + r8.xy;
    r8.xy = float2(0.5,0.5) * r8.xy;
    r8.xy = frac(r8.xy);
    r7.xy = r8.xy * r7.yz;
    r7.xy = r7.xy + r7.xy;
    r0.y = saturate(r7.x + r7.y);
    r0.y = 500 * r0.y;
    r7.x = saturate(3 * r1.w);
    r7.yz = r7.xx * float2(-0.351350993,-2.35135102) + float2(1.702703,1);
    r7.x = r7.x * r7.x;
    r7.x = saturate(r7.y * r7.x + r7.z);
    r7.x = r7.x * r7.w + 1;
    r11.y = r7.x * r0.y;
    r7.xyz = r0.zzz * float3(0.337837994,732096.75,0.246032) + float3(0,-270875.688,0.753968);
    r10.xyzw = cmp(r0.zzzz >= float4(0,0.370000005,0.370000988,1));
    r10.xyzw = r10.xyzw ? float4(1,1,1,1) : 0;
    r8.xyw = r10.xyz + r10.yzw;
    r8.xyw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyw;
    r8.xyw = float3(0.5,0.5,0.5) * r8.xyw;
    r8.xyw = frac(r8.xyw);
    r7.xyz = r8.xyw * r7.xyz;
    r0.yz = float2(2,2) * r7.xy;
    r0.y = r0.y + r0.z;
    r0.y = r7.z * 2 + r0.y;
    r0.y = saturate(r10.w * 1 + r0.y);
    r7.xyz = r0.yyy * float3(0.0391620025,-0.0903180093,-0.570829988) + float3(0.080219999,0.283149004,1);
    r8.xyw = r0.www * float3(0,0,0.867053986) + float3(0,0,-0.795158029);
    r10.xyz = r0.www * float3(-0.386628002,-2.28192997,-1.04276001) + float3(1,1.51472402,0.970863998);
    r8.xyz = r8.xyw * r8.zzz + r10.xyz;
    r10.xyzw = cmp(r0.wwww >= float4(0,0.271578997,0.513333023,1));
    r10.xyzw = r10.xyzw ? float4(1,1,1,1) : 0;
    r0.yzw = r10.xyz + r10.yzw;
    r0.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r0.yzw;
    r0.yzw = float3(0.5,0.5,0.5) * r0.yzw;
    r0.yzw = frac(r0.yzw);
    r0.yzw = r0.yzw * r8.xyz;
    r0.yz = r0.yz + r0.yz;
    r0.y = r0.y + r0.z;
    r0.y = saturate(r0.w * 2 + r0.y);
    r0.yzw = r0.yyy * float3(0.183907986,0.0972149968,0) + float3(0.278169006,0.618478,1);
    r7.w = saturate(r3.w);
    r8.xy = r7.ww * float2(-0.478260994,-2.47826099) + float2(1.95652199,1);
    r7.w = r7.w * r7.w;
    r7.w = saturate(r8.x * r7.w + r8.y);
    r0.yzw = r0.yzw + -r7.xyz;
    r7.xyz = r7.www * r0.yzw + r7.xyz;
    r0.x = mad(7, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
    r7.w = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r7.xyzw
    r9.xyz = r4.yzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r9.xyzw
    r11.zw = r5.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r11.xyzw
    r0.yz = (int2)r0.xx + int2(5,6);
    r5.zw = r2.xy;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r5.xyzw
    r6.xy = r2.zw;
    r6.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r6.xyzw
  }
  return;
}