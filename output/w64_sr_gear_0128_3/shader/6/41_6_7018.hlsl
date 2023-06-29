// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:38 2023
Buffer<float4> t0 : register(t0);

cbuffer cb13 : register(b13)
{
  float4 cb13[1];
}

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
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
    r5.xyzw = t0.Load(r2.z).xyzw;
    r2.xyzw = t0.Load(r2.w).xyzw;
    r0.y = (int)r0.y + 5;
    r6.xyz = t0.Load(r0.y).xyz;
    r7.w = cb13[0].x * -0.100000001 + r5.y;
    r0.yz = saturate(r5.wz);
    r0.w = 0.400000006 * r0.y;
    r8.xw = r0.yz * float2(0.400000006,0.899999976) + float2(0.100000001,0.100000001);
    r9.xyzw = saturate(r2.yxwz);
    r9.xyzw = r9.zxyw * float4(0.400000006,0.400000006,0.899999976,0.899999976) + float4(0.100000001,0.100000001,0.100000001,0.100000001);
    r0.y = saturate(r4.x);
    r0.z = r0.y * 2 + r0.w;
    r10.w = -1.20000005 + r0.z;
    r0.zw = cb13[0].xy + r2.xz;
    r11.xy = float2(0.0399999991,0.0299999993) * r0.zz;
    r11.xy = frac(r11.xy);
    r12.z = 1 + -r11.x;
    r0.z = saturate(0.333332986 * r1.w);
    r13.xyzw = r0.zzzz * float4(0,633.103271,15.9691162,1.450863) + float4(0,-99.9708252,-10.4739227,-2.5933609);
    r14.xyzw = r0.zzzz * float4(16.5817337,7.99419689,3.62891603,2.19626808) + float4(0,0.0506860018,0.122795001,0.210247993);
    r15.xyzw = r0.zzzz * float4(0.153933004,-0.294095993,1.50990403,0.496670008) + float4(-0.970156014,0.192871004,0.308346987,0.604618013);
    r11.x = r0.z * r0.z;
    r13.xyzw = r13.xyzw * r11.xxxx + r14.xyzw;
    r11.xz = r15.xy * r11.xx + r15.zw;
    r14.xyzw = cmp(r0.zzzz >= float4(0,0.00555599993,0.0555559993,0.200000003));
    r14.xyzw = r14.xyzw ? float4(1,1,1,1) : 0;
    r15.xyz = cmp(r0.zzz >= float3(0.427778006,0.866666973,1));
    r16.xyw = r15.xyz ? float3(1,1,1) : 0;
    r14.xyz = r14.xyz + r14.yzw;
    r14.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r14.xyz;
    r14.xyz = float3(0.5,0.5,0.5) * r14.xyz;
    r14.xyz = frac(r14.xyz);
    r13.xyz = r14.xyz * r13.xyz;
    r14.xyz = r16.xyw + r16.yww;
    r14.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r14.xyz;
    r14.xyz = float3(0.5,0.5,0.5) * r14.xyz;
    r14.xyz = frac(r14.xyz);
    r11.xz = r14.xy * r11.xz;
    r0.z = 2;
    r13.xy = r0.zz * r13.xy;
    r11.xz = float2(2,2) * r11.xz;
    r11.w = r13.x + r13.y;
    r0.z = r0.z * r13.z + r11.w;
    r0.z = r13.w * r14.w + r0.z;
    r11.x = r11.x + r11.z;
    r11.x = r14.z * 2 + r11.x;
    r11.x = r16.w * 1 + r11.x;
    r0.z = saturate(r15.x ? r11.x : r0.z);
    r0.z = r0.z * -0.75 + -r11.y;
    r12.w = 1 + r0.z;
    r11.w = frac(r0.w);
    r13.xyzw = r0.yyyy * float4(6.66666698,-12.1261749,-45.1932983,-11.8968048) + float4(0,2.8189261,4.74004889,2.25513601);
    r14.xyzw = r0.yyyy * float4(0,-228.30127,-8.27801514,16.3734131) + float4(0,167.292236,18.8952026,-5.58892822);
    r15.xyzw = r0.yyyy * float4(-3.75950599,0.153933004,-0.294095993,-4) + float4(1.35013199,-0.970156014,0.192871004,4);
    r0.z = r0.y * r0.y;
    r13.xyzw = r14.xxyz * r0.zzzz + r13.xyzw;
    r0.w = r14.w * r0.z + r15.x;
    r14.xyzw = cmp(r0.yyyy >= float4(0,0.150000006,0.166666999,0.237499997));
    r14.xyzw = r14.xyzw ? float4(1,1,1,1) : 0;
    r16.xy = cmp(r0.yy >= float2(0.333332986,0.400000006));
    r16.yz = r16.xy ? float2(1,1) : 0;
    r14.xyz = r14.xyz + r14.yzw;
    r14.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r14.xyz;
    r14.xyz = float3(0.5,0.5,0.5) * r14.xyz;
    r14.xyz = frac(r14.xyz);
    r13.xyz = r14.xyz * r13.xyz;
    r14.x = r16.y + r16.z;
    r14.x = 9.99999997e-007 + r14.x;
    r14.x = 0.5 * r14.x;
    r14.x = frac(r14.x);
    r14.y = 2;
    r13.xy = r14.yy * r13.xy;
    r0.w = dot(r14.xx, r0.ww);
    r13.x = r13.x + r13.y;
    r13.x = r14.y * r13.z + r13.x;
    r13.x = r13.w * r14.w + r13.x;
    r13.z = saturate(r16.x ? r0.w : r13.x);
    r14.xyzw = r0.yyyy * float4(0,633.103271,15.9691162,1.450863) + float4(0,-99.9708252,-10.4739227,-2.5933609);
    r16.xyzw = r0.yyyy * float4(16.5817337,7.99419689,3.62891603,2.19626808) + float4(0,0.0506860018,0.122795001,0.210247993);
    r17.xy = r0.yy * float2(1.50990403,0.496670008) + float2(0.308346987,0.604618013);
    r14.xyzw = r14.xyzw * r0.zzzz + r16.xyzw;
    r0.zw = r15.yz * r0.zz + r17.xy;
    r16.xyzw = cmp(r0.yyyy >= float4(0,0.00555599993,0.0555559993,0.200000003));
    r16.xyzw = r16.xyzw ? float4(1,1,1,1) : 0;
    r15.xyz = cmp(r0.yyy >= float3(0.427778006,0.866666973,1));
    r17.xyw = r15.xyz ? float3(1,1,1) : 0;
    r16.xyz = r16.xyz + r16.yzw;
    r16.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r16.xyz;
    r16.xyz = float3(0.5,0.5,0.5) * r16.xyz;
    r16.xyz = frac(r16.xyz);
    r14.xyz = r16.xyz * r14.xyz;
    r16.xyz = r17.xyw + r17.yww;
    r16.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r16.xyz;
    r16.xyz = float3(0.5,0.5,0.5) * r16.xyz;
    r16.xyz = frac(r16.xyz);
    r0.zw = r16.xy * r0.zw;
    r15.y = 2;
    r14.xy = r15.yy * r14.xy;
    r0.zw = float2(2,2) * r0.zw;
    r14.x = r14.x + r14.y;
    r14.x = r15.y * r14.z + r14.x;
    r14.x = r14.w * r16.w + r14.x;
    r0.z = r0.z + r0.w;
    r0.z = r16.z * 2 + r0.z;
    r0.z = r17.w * 1 + r0.z;
    r0.z = saturate(r15.x ? r0.z : r14.x);
    r14.yz = r0.zz * float2(-0.5,-0.5) + float2(1,1);
    r0.z = saturate(r6.x);
    r15.xy = r0.zz * float2(0.25,4) + float2(0,-3);
    r16.xyz = cmp(r0.zzz >= float3(0,0.800000012,1));
    r16.xyw = r16.xyz ? float3(1,1,1) : 0;
    r16.xyz = r16.xyw + r16.yww;
    r16.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r16.xyz;
    r16.xyz = float3(0.5,0.5,0.5) * r16.xyz;
    r16.xyz = frac(r16.xyz);
    r0.zw = r16.xy * r15.xy;
    r0.zw = float2(2,2) * r0.zw;
    r0.z = r0.z + r0.w;
    r0.z = r16.z * 2 + r0.z;
    r0.z = saturate(r16.w * 1 + r0.z);
    r14.x = r0.z * 0.100000001 + 0.100000001;
    r14.xyz = float3(0.5,0.200000003,0.200000003) * r14.xyz;
    r0.yzw = cmp(r0.yyy >= float3(0,0.75,1));
    r0.yzw = r0.yzw ? float3(1,1,1) : 0;
    r0.yz = r0.yz + r0.zw;
    r0.yz = float2(9.99999997e-007,9.99999997e-007) + r0.yz;
    r0.yz = float2(0.5,0.5) * r0.yz;
    r15.xy = frac(r0.yz);
    r15.z = r15.y * r15.w;
    r0.yz = r15.xz + r15.xz;
    r0.y = r0.y + r0.z;
    r13.w = min(1, r0.y);
    r0.x = mad(14, (int)vThreadID.x, (int)r0.x);
    r8.yz = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r8.xyzw
    r8.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r15.xw = r9.yz;
    r15.y = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r8.xxxx, r15.xyyw
    r9.y = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r8.yyyy, r9.xyyw
    r10.xyz = float3(1,1,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r8.zzzz, r10.xyzw
    r12.xy = float2(0.100000001,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r8.wwww, r12.xyzw
    r8.xyzw = (int4)r0.xxxx + int4(5,6,7,8);
    r11.xyz = float3(1,1,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r8.xxxx, r11.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r8.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r8.zzzz, r3.xyzw
    r14.w = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r8.wwww, r14.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(9,10,11,12);
    r7.xyz = r4.yzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r7.xyzw
    r13.xy = r7.ww;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r13.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
    r0.y = (int)r0.x + 13;
    r6.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r6.xyzw
  }
  return;
}